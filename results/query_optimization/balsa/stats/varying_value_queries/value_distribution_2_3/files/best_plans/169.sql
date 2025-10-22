/*+ MergeJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<111 AND p.CommentCount>5 AND p.CommentCount<34 AND u.DownVotes>42 AND u.DownVotes<1372 AND v.CreationDate>'2013-02-21 09:13:43'::timestamp AND v.CreationDate<'2014-01-05 02:42:49'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<7 AND b.Date>'2011-09-13 06:23:56'::timestamp AND b.Date<'2011-12-02 10:41:13'::timestamp;

