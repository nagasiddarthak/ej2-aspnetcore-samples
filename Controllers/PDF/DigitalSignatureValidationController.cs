#region Copyright Syncfusion Inc. 2001-2023.
// Copyright Syncfusion Inc. 2001-2023. All rights reserved.
// Use of this code is subject to the terms of our license.
// A copy of the current license can be obtained at any time by e-mailing
// licensing@syncfusion.com. Any infringement will be prosecuted under
// applicable laws. 
#endregion
using Microsoft.AspNetCore.Mvc;
using Syncfusion.Pdf;
using Syncfusion.Pdf.Security;
using System.IO;
using EJ2CoreSampleBrowser.Models;
using System.Text;
using Syncfusion.Pdf.Parsing;
using System.Security.Cryptography.X509Certificates;

namespace EJ2CoreSampleBrowser.Controllers.PDF
{
    public partial class PdfController : Controller
    {
        public ActionResult DigitalSignatureValidation()
        {
            SignatureValidationMessage message = new SignatureValidationMessage();
            message.Message = string.Empty;
            return View("DigitalSignatureValidation", message);
        }

        [HttpPost]
        public ActionResult DigitalSignatureValidation(string SignatureValidation)
        {
            string dataPath = _hostingEnvironment.WebRootPath + @"/PDF/";
            SignatureValidationMessage message = new SignatureValidationMessage();

            FileStream fileStreamInput = new FileStream(dataPath + @"DigitalSignature.pdf", FileMode.Open, FileAccess.Read);

            //Load an existing signed PDF document
            PdfLoadedDocument ldoc = new PdfLoadedDocument(fileStreamInput);

            //Get signature field.
            PdfLoadedSignatureField lSigFld = ldoc.Form.Fields[0] as PdfLoadedSignatureField;

            //X509Certificate2Collection to check the signer's identity using root certificates.
            X509CertificateCollection collection = new X509CertificateCollection();

            //Read the certificate file.
            FileStream pfxFile = new FileStream(dataPath + @"PDF.pfx", FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
            
            byte[] data = new byte[pfxFile.Length];

            pfxFile.Read(data, 0, data.Length);

            //Create new X509Certificate2 with the root certificate.
            X509Certificate2 certificate = new X509Certificate2(data, "password123");

            //Add the certificate to the collection.
            collection.Add(certificate);

            //Validate signature and get the validation result
            PdfSignatureValidationResult result = lSigFld.ValidateSignature(collection);

            StringBuilder builder = new StringBuilder();

            builder.AppendLine("Signature is " + result.SignatureStatus);
         
            builder.AppendLine("--------Validation Summary--------");

            //Checks whether the document is modified or not
            bool isModified = result.IsDocumentModified;
            if (isModified)
                builder.AppendLine("The document has been altered or corrupted since the signature was applied.");
            else
                builder.AppendLine("The document has not been modified since the signature was applied.");

            //Signature details
            builder.AppendLine("Digitally signed by " + lSigFld.Signature.Certificate.IssuerName);
            builder.AppendLine("Valid From : " + lSigFld.Signature.Certificate.ValidFrom);
            builder.AppendLine("Valid To : " + lSigFld.Signature.Certificate.ValidTo);
            builder.AppendLine("Signature Algorithm : " + result.SignatureAlgorithm);
            builder.AppendLine("Hash Algorithm : " + result.DigestAlgorithm);

            //Revocation validation details
            builder.AppendLine("OCSP revocation status : " + result.RevocationResult.OcspRevocationStatus);
            if (result.RevocationResult.OcspRevocationStatus == RevocationStatus.None && result.RevocationResult.IsRevokedCRL)
                builder.AppendLine("CRL is revoked.");

            //Close the document
            ldoc.Close(true);

            message.Message = builder.ToString();
            return View("DigitalSignatureValidation", message);
        }

    }
}
