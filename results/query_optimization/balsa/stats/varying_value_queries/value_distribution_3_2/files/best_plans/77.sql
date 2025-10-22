/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<183 AND p.CommentCount>18 AND p.CommentCount<22 AND u.DownVotes>521 AND u.DownVotes<1454 AND v.CreationDate>'2010-01-21 03:43:42'::timestamp AND v.CreationDate<'2012-01-19 12:29:03'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2013-10-06 11:17:38'::timestamp AND b.Date<'2013-10-18 04:26:53'::timestamp;

