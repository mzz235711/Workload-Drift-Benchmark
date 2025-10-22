/*+ MergeJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<161 AND p.CommentCount>8 AND p.CommentCount<14 AND u.DownVotes>747 AND u.DownVotes<1488 AND v.CreationDate>'2009-11-24 03:27:36'::timestamp AND v.CreationDate<'2013-11-28 20:40:33'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2014-02-19 23:22:56'::timestamp AND b.Date<'2014-05-12 05:45:47'::timestamp;

