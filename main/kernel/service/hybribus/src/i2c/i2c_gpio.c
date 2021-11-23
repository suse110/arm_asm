
/* Toggle SDA by changing the direction of the pin */
static void i2cm_setsda_dir(void *data, int state)
{
	struct i2cm_platform_data *pdata = data;

	if (state)
		gpio_direction_input(pdata->sda_pin);
	else
		gpio_direction_output(pdata->sda_pin, 0);
}

/*
 * Toggle SDA by changing the output value of the pin. This is only
 * valid for pins configured as open drain (i.e. setting the value
 * high effectively turns off the output driver.)
 */
static void i2cm_setsda_val(void *data, int state)
{
	struct i2cm_platform_data *pdata = data;

	gpio_set_value(pdata->sda_pin, state);
}

/* Toggle SCL by changing the direction of the pin. */
static void i2cm_setscl_dir(void *data, int state)
{
	struct i2cm_platform_data *pdata = data;

	if (state)
		gpio_direction_input(pdata->scl_pin);
	else
		gpio_direction_output(pdata->scl_pin, 0);
}

/*
 * Toggle SCL by changing the output value of the pin. This is used
 * for pins that are configured as open drain and for output-only
 * pins. The latter case will break the i2c protocol, but it will
 * often work in practice.
 */
static void i2cm_setscl_val(void *data, int state)
{
	struct i2cm_platform_data *pdata = data;

	gpio_set_value(pdata->scl_pin, state);
}

static int i2cm_getsda(void *data)
{
	struct i2cm_platform_data *pdata = data;

	return gpio_get_value(pdata->sda_pin);
}

static int i2cm_getscl(void *data)
{
	struct i2cm_platform_data *pdata = data;

	return gpio_get_value(pdata->scl_pin);
}
