/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<40 AND p.CommentCount>10 AND p.CommentCount<34 AND u.DownVotes>497 AND u.DownVotes<859 AND v.CreationDate>'2009-04-08 02:17:31'::timestamp AND v.CreationDate<'2014-01-22 10:07:01'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2012-02-10 05:25:19'::timestamp AND b.Date<'2013-01-14 17:44:14'::timestamp;

