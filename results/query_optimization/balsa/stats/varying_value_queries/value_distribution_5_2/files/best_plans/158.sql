/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<110 AND p.CommentCount>5 AND p.CommentCount<34 AND u.DownVotes>122 AND u.DownVotes<497 AND v.CreationDate>'2010-12-06 23:46:13'::timestamp AND v.CreationDate<'2014-09-09 09:22:19'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<12 AND b.Date>'2012-06-11 18:43:31'::timestamp AND b.Date<'2013-01-08 20:35:56'::timestamp;

