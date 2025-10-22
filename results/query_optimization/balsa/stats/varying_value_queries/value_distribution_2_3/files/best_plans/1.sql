/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>23 AND p.Score<40 AND p.CommentCount>12 AND p.CommentCount<21 AND u.DownVotes>114 AND u.DownVotes<1845 AND v.CreationDate>'2011-11-13 21:13:42'::timestamp AND v.CreationDate<'2012-12-30 19:18:01'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2013-03-22 07:29:29'::timestamp AND b.Date<'2014-06-30 10:21:01'::timestamp;

