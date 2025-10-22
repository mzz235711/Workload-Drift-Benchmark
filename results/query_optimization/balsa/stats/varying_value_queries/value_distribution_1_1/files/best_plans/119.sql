/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<123 AND p.CommentCount>6 AND p.CommentCount<18 AND u.DownVotes>433 AND u.DownVotes<975 AND v.CreationDate>'2009-09-19 23:03:26'::timestamp AND v.CreationDate<'2011-06-03 00:11:56'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2013-06-06 13:39:49'::timestamp AND b.Date<'2013-11-20 11:34:02'::timestamp;

