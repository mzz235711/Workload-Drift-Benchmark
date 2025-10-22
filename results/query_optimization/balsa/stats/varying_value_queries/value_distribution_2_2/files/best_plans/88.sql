/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<19 AND p.CommentCount>19 AND p.CommentCount<21 AND u.DownVotes>186 AND u.DownVotes<1778 AND v.CreationDate>'2010-08-15 02:17:17'::timestamp AND v.CreationDate<'2012-04-13 14:54:31'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2011-05-23 06:26:32'::timestamp AND b.Date<'2013-04-06 18:37:50'::timestamp;

