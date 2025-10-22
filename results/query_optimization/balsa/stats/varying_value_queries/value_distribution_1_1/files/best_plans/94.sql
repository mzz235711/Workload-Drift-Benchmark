/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 SeqScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<123 AND p.CommentCount>20 AND p.CommentCount<38 AND u.DownVotes>77 AND u.DownVotes<796 AND v.CreationDate>'2010-04-06 05:34:06'::timestamp AND v.CreationDate<'2014-01-09 18:10:53'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2011-04-30 21:37:33'::timestamp AND b.Date<'2012-11-05 12:31:39'::timestamp;

