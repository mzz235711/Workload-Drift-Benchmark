/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>45 AND p.Score<93 AND p.CommentCount>1 AND p.CommentCount<31 AND u.DownVotes>327 AND u.DownVotes<1433 AND v.CreationDate>'2011-08-23 03:24:18'::timestamp AND v.CreationDate<'2013-04-15 19:15:15'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<8 AND b.Date>'2010-12-31 03:33:11'::timestamp AND b.Date<'2012-02-27 05:38:17'::timestamp;

