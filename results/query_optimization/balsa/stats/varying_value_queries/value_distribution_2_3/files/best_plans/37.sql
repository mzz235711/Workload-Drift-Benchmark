/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<124 AND p.CommentCount>0 AND p.CommentCount<4 AND u.DownVotes>167 AND u.DownVotes<1785 AND v.CreationDate>'2009-06-11 21:24:21'::timestamp AND v.CreationDate<'2012-06-13 06:15:19'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2012-02-14 11:44:44'::timestamp AND b.Date<'2013-01-22 13:07:04'::timestamp;

