/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<123 AND p.CommentCount>16 AND p.CommentCount<43 AND u.DownVotes>4 AND u.DownVotes<559 AND v.CreationDate>'2011-03-29 16:46:02'::timestamp AND v.CreationDate<'2011-11-21 04:35:01'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2013-02-04 18:29:49'::timestamp AND b.Date<'2013-11-14 12:07:11'::timestamp;

