/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<187 AND p.CommentCount>9 AND p.CommentCount<23 AND u.DownVotes>298 AND u.DownVotes<1547 AND v.CreationDate>'2009-08-15 03:26:34'::timestamp AND v.CreationDate<'2012-06-14 19:47:35'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2011-07-20 03:58:40'::timestamp AND b.Date<'2012-01-12 09:17:21'::timestamp;

