/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<188 AND p.CommentCount>7 AND p.CommentCount<43 AND u.DownVotes>160 AND u.DownVotes<1774 AND v.CreationDate>'2012-06-13 22:38:31'::timestamp AND v.CreationDate<'2013-05-20 07:58:16'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2012-04-30 03:54:42'::timestamp AND b.Date<'2014-07-24 01:22:05'::timestamp;

