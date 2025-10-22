/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<138 AND p.CommentCount>10 AND p.CommentCount<41 AND u.DownVotes>577 AND u.DownVotes<1250 AND v.CreationDate>'2010-01-01 14:50:12'::timestamp AND v.CreationDate<'2011-07-20 20:13:05'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<13 AND b.Date>'2011-04-16 21:13:59'::timestamp AND b.Date<'2013-10-06 04:32:59'::timestamp;

