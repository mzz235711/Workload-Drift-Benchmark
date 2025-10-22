/*+ NestLoop(u p v c)
 NestLoop(u p v)
 HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 IndexScan(v)
 IndexScan(c)
 Leading((((u p) v) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.Score=4 AND p.ViewCount>=0 AND p.ViewCount<=3125 AND p.AnswerCount>=0 AND p.AnswerCount<=8 AND v.BountyAmount<=50 AND u.Reputation>=1 AND u.Reputation<=890 AND u.Views<=36 AND u.CreationDate>='2010-09-16 07:57:09'::timestamp;

