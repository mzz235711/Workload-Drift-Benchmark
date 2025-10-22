/*+ HashJoin(b u p v)
 HashJoin(u p v)
 HashJoin(p v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.CreationDate<='2014-09-02 14:50:00'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0;

