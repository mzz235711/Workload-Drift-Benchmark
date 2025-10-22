/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<63 AND p.CommentCount>4 AND p.CommentCount<7 AND u.DownVotes>95 AND u.DownVotes<1001 AND v.CreationDate>'2011-12-10 12:42:06'::timestamp AND v.CreationDate<'2013-10-24 19:39:42'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2011-01-06 13:57:02'::timestamp AND b.Date<'2013-11-26 03:20:58'::timestamp;

