/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<88 AND p.CommentCount>4 AND p.CommentCount<35 AND u.DownVotes>60 AND u.DownVotes<757 AND v.CreationDate>'2010-03-09 13:54:38'::timestamp AND v.CreationDate<'2012-11-24 17:50:49'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2013-08-02 00:21:06'::timestamp AND b.Date<'2014-06-11 11:47:07'::timestamp;

