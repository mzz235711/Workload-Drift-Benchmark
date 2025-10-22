/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>85 AND p.Score<134 AND p.CommentCount>1 AND p.CommentCount<12 AND u.DownVotes>38 AND u.DownVotes<755 AND v.CreationDate>'2009-08-27 01:15:01'::timestamp AND v.CreationDate<'2011-12-01 10:16:18'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2012-01-31 01:45:57'::timestamp AND b.Date<'2014-01-28 16:34:33'::timestamp;

