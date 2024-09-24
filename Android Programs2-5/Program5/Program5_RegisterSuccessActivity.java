import androidx.appcompat.app.AppCompatActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class RegisterSuccessActivity extends AppCompatActivity {
    Button login_Btn;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_registersuccess);
        login_Btn =(Button)findViewById(R.id.loginBtn);
        String regEmail = getIntent().getStringExtra("email");
        String regPassword= getIntent().getStringExtra("password");
        login_Btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                    Intent intent = new Intent(RegisterSuccessActivity.this, loginActivity.class);
                  

                    intent.putExtra("email", regEmail);
                    intent.putExtra("password", regPassword);
                    startActivity(intent);
            }
        });
    }
}
