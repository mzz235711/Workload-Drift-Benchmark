/*+ HashJoin(b u v)
 HashJoin(u v)
 SeqScan(b)
 IndexScan(u)
 SeqScan(v)
 Leading((b (u v))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND u.Views>=0 AND u.DownVotes>=0 AND u.UpVotes<=17 AND u.CreationDate>='2011-01-02 10:44:09'::timestamp;

