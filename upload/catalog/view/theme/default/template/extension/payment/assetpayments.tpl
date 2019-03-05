<form action="<?php echo $action; ?>" method="post" id="checkout">
  <input type="hidden" name="data" value="<?php echo $xml; ?>">
  <div class="buttons">
    <div class="pull-right">
      <input type="button" value="<?php echo $button_confirm; ?>" id="button-confirm" class="btn btn-primary" />
    </div>
  </div>
</form>
<script type="text/javascript"><!--
$('#button-confirm').on('click', function() {
	$.ajax({
		type: 'get',
		url: 'index.php?route=extension/payment/assetpayments/confirm',
		cache: false,
		beforeSend: function() {
			$('#button-confirm').button('loading');
		},
		complete: function() {
			$('#button-confirm').button('reset');
		},
		success: function() {
			document.forms['checkout'].submit();
		}
	});
});
//--></script>