/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<180 AND p.CommentCount>12 AND p.CommentCount<24 AND u.DownVotes>139 AND u.DownVotes<257 AND v.CreationDate>'2009-05-25 16:03:10'::timestamp AND v.CreationDate<'2014-09-01 02:12:23'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<6 AND b.Date>'2010-08-23 21:12:17'::timestamp AND b.Date<'2014-06-25 15:29:22'::timestamp;

