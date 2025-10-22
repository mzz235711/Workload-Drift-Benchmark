/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>69 AND p.Score<190 AND p.CommentCount>1 AND p.CommentCount<9 AND u.DownVotes>25 AND u.DownVotes<37 AND v.CreationDate>'2009-06-01 04:31:55'::timestamp AND v.CreationDate<'2011-10-07 12:53:46'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-11-12 22:02:41'::timestamp AND b.Date<'2012-10-19 23:33:30'::timestamp;

