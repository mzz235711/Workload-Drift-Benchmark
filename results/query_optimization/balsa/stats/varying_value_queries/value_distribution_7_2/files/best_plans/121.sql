/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<77 AND p.CommentCount>7 AND p.CommentCount<38 AND u.DownVotes>735 AND u.DownVotes<1170 AND v.CreationDate>'2011-03-29 03:20:18'::timestamp AND v.CreationDate<'2013-12-14 09:02:12'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<11 AND b.Date>'2010-12-10 00:47:28'::timestamp AND b.Date<'2011-01-13 23:40:19'::timestamp;

