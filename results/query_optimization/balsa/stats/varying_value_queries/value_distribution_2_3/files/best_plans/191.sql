/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<141 AND p.CommentCount>0 AND p.CommentCount<16 AND u.DownVotes>713 AND u.DownVotes<963 AND v.CreationDate>'2009-03-26 14:42:09'::timestamp AND v.CreationDate<'2011-11-13 04:48:43'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<11 AND b.Date>'2013-07-01 09:07:01'::timestamp AND b.Date<'2014-06-13 16:51:24'::timestamp;

