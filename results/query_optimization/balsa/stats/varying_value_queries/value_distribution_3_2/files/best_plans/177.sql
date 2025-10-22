/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<65 AND p.CommentCount>2 AND p.CommentCount<43 AND u.DownVotes>102 AND u.DownVotes<1414 AND v.CreationDate>'2010-02-08 09:51:55'::timestamp AND v.CreationDate<'2013-08-22 08:47:33'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2011-03-03 20:04:50'::timestamp AND b.Date<'2012-03-10 15:04:13'::timestamp;

