/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 SeqScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<23 AND p.CommentCount>4 AND p.CommentCount<40 AND u.DownVotes>69 AND u.DownVotes<1884 AND v.CreationDate>'2010-06-20 21:38:41'::timestamp AND v.CreationDate<'2013-12-25 18:54:02'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<6 AND b.Date>'2013-07-26 14:25:28'::timestamp AND b.Date<'2013-11-10 19:31:07'::timestamp;

