/*+ HashJoin(b u v p)
 HashJoin(u v p)
 HashJoin(v p)
 SeqScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount<=50 AND p.PostTypeId=1 AND p.ViewCount<=3043 AND p.AnswerCount>=0 AND p.AnswerCount<=8 AND p.CreationDate<='2014-09-03 20:32:50'::timestamp AND u.Reputation<=158 AND u.DownVotes<=26 AND u.UpVotes<=10;

