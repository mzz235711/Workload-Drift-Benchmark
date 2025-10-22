/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<149 AND p.CommentCount>12 AND p.CommentCount<15 AND u.DownVotes>331 AND u.DownVotes<836 AND v.CreationDate>'2011-09-28 11:26:54'::timestamp AND v.CreationDate<'2013-10-10 04:03:41'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-03-30 14:35:55'::timestamp AND b.Date<'2011-09-05 00:23:39'::timestamp;

