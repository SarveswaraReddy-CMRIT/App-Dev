import androidx.appcompat.app.AppCompatActivity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

  public class MainActivity extends AppCompatActivity {

    TextView welcome;

    Button phone, sms, website;

    Intent i = new Intent();


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        phone = (Button)findViewById(R.id.b1);

        sms = (Button) findViewById(R.id.b2);

        website = (Button) findViewById(R.id.b3);

        phone.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                i.setAction(Intent.ACTION_DIAL);
                i.setData(Uri.parse("tel:9505061025"));
                startActivity(i);
            }
        });

        sms.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                i.setAction(Intent.ACTION_VIEW);
                i.setData(Uri.parse("sms:9505061025"));
                startActivity(i);

            }
        });

        website.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                i.setAction(Intent.ACTION_VIEW);
                i.setData(Uri.parse("https://www.cmrithyderabad.edu.in/"));
                startActivity(i);

            }
        });
    }
}
