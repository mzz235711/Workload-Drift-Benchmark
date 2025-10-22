/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<135 AND p.CommentCount>13 AND p.CommentCount<23 AND u.DownVotes>633 AND u.DownVotes<1200 AND v.CreationDate>'2011-11-10 20:44:31'::timestamp AND v.CreationDate<'2014-04-29 06:40:31'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<11 AND b.Date>'2011-09-17 16:16:37'::timestamp AND b.Date<'2014-08-14 18:51:27'::timestamp;

