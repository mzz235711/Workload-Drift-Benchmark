/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>34 AND p.Score<124 AND p.CommentCount>5 AND p.CommentCount<30 AND u.DownVotes>184 AND u.DownVotes<563 AND v.CreationDate>'2011-07-07 19:18:21'::timestamp AND v.CreationDate<'2013-02-27 22:23:05'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2012-01-28 09:53:16'::timestamp AND b.Date<'2013-06-07 02:17:14'::timestamp;

