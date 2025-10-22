/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>68 AND p.Score<159 AND p.CommentCount>0 AND p.CommentCount<41 AND u.DownVotes>306 AND u.DownVotes<966 AND v.CreationDate>'2010-12-04 01:46:33'::timestamp AND v.CreationDate<'2012-11-18 19:21:39'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2013-02-27 10:15:59'::timestamp AND b.Date<'2013-09-15 16:28:22'::timestamp;

