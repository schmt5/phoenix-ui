import Trix from "trix";

export default {
  mounted() {
    const element = document.querySelector("trix-editor");

    element.editor.element.addEventListener("trix-change", (e) => {
      this.el.dispatchEvent(new Event("change", { bubbles: true }));
    });

    // Handles behavior when inserting a file
    element.editor.element.addEventListener(
      "trix-attachment-add",
      function (event) {
        if (event.attachment.file) uploadFileAttachment(event.attachment);
      }
    );

    // Handle behavior when deleting a file
    element.editor.element.addEventListener(
      "trix-attachment-remove",
      function (event) {
        removeFileAttachment(event.attachment.attachment.previewURL);
      }
    );
  },
};
