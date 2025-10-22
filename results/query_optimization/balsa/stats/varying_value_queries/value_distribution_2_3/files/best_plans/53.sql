/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<114 AND p.CommentCount>11 AND p.CommentCount<44 AND u.DownVotes>475 AND u.DownVotes<1044 AND v.CreationDate>'2012-12-09 03:16:18'::timestamp AND v.CreationDate<'2014-08-28 13:09:49'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<12 AND b.Date>'2011-10-10 02:51:39'::timestamp AND b.Date<'2013-02-12 19:10:22'::timestamp;

