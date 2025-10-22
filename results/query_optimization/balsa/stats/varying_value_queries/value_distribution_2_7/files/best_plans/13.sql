/*+ MergeJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<15 AND p.CommentCount>0 AND p.CommentCount<12 AND u.DownVotes>0 AND u.DownVotes<1315 AND v.CreationDate>'2010-09-23 04:48:15'::timestamp AND v.CreationDate<'2013-01-31 18:12:13'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<12 AND b.Date>'2014-03-11 15:49:40'::timestamp AND b.Date<'2014-06-05 22:49:48'::timestamp;

