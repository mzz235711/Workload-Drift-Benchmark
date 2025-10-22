/*+ HashJoin(b u p v)
 HashJoin(u p v)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b ((u p) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=5 AND p.CreationDate>='2010-07-22 10:16:18'::timestamp AND b.Date>='2010-07-20 00:14:07'::timestamp AND b.Date<='2014-09-02 07:24:59'::timestamp AND u.Reputation>=1 AND u.Reputation<=3150;

