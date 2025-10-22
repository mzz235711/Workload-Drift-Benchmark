/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<92 AND p.CommentCount>16 AND p.CommentCount<29 AND u.DownVotes>374 AND u.DownVotes<999 AND v.CreationDate>'2009-10-12 22:25:12'::timestamp AND v.CreationDate<'2012-03-13 03:03:33'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<11 AND b.Date>'2012-08-21 13:42:59'::timestamp AND b.Date<'2014-06-08 11:46:13'::timestamp;

