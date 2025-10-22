/*+ MergeJoin(v u b p)
 NestLoop(u b p)
 NestLoop(u b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 IndexScan(p)
 Leading((v ((u b) p))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<48 AND p.CommentCount>2 AND p.CommentCount<31 AND u.DownVotes>118 AND u.DownVotes<409 AND v.CreationDate>'2010-06-19 03:01:17'::timestamp AND v.CreationDate<'2012-07-06 11:23:59'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<11 AND b.Date>'2011-06-20 14:18:54'::timestamp AND b.Date<'2011-09-25 11:54:50'::timestamp;

