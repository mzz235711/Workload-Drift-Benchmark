/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>18 AND p.Score<53 AND p.CommentCount>6 AND p.CommentCount<15 AND u.DownVotes>468 AND u.DownVotes<1131 AND v.CreationDate>'2012-02-06 22:05:03'::timestamp AND v.CreationDate<'2014-01-31 11:59:35'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2010-11-08 05:31:48'::timestamp AND b.Date<'2014-05-26 03:03:51'::timestamp;

