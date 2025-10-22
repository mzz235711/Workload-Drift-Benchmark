/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<137 AND p.CommentCount>4 AND p.CommentCount<24 AND u.DownVotes>12 AND u.DownVotes<873 AND v.CreationDate>'2010-02-18 16:12:59'::timestamp AND v.CreationDate<'2012-09-29 07:18:27'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<13 AND b.Date>'2011-05-23 08:32:52'::timestamp AND b.Date<'2013-03-29 09:07:20'::timestamp;

