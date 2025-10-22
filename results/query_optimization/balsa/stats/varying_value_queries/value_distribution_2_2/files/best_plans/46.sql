/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<146 AND p.CommentCount>12 AND p.CommentCount<30 AND u.DownVotes>763 AND u.DownVotes<1345 AND v.CreationDate>'2009-07-22 08:57:29'::timestamp AND v.CreationDate<'2013-05-08 19:17:21'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2012-03-06 06:39:17'::timestamp AND b.Date<'2013-12-16 14:39:22'::timestamp;

