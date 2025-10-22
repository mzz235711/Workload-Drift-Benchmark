/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>52 AND p.Score<147 AND p.CommentCount>5 AND p.CommentCount<20 AND u.DownVotes>196 AND u.DownVotes<1601 AND v.CreationDate>'2014-05-16 23:34:12'::timestamp AND v.CreationDate<'2014-06-26 21:31:41'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2012-09-20 18:44:27'::timestamp AND b.Date<'2014-03-22 10:53:04'::timestamp;

