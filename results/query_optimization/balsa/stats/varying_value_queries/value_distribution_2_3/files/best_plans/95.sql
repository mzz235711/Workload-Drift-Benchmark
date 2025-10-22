/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<55 AND p.CommentCount>12 AND p.CommentCount<29 AND u.DownVotes>115 AND u.DownVotes<546 AND v.CreationDate>'2009-03-06 07:07:20'::timestamp AND v.CreationDate<'2012-10-02 14:53:23'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<13 AND b.Date>'2010-11-09 03:16:49'::timestamp AND b.Date<'2013-05-26 08:06:55'::timestamp;

