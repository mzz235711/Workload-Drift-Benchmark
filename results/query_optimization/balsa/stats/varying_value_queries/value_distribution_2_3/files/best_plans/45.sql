/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>19 AND p.Score<57 AND p.CommentCount>8 AND p.CommentCount<17 AND u.DownVotes>19 AND u.DownVotes<937 AND v.CreationDate>'2012-01-14 15:49:04'::timestamp AND v.CreationDate<'2012-10-30 16:40:43'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2014-01-02 22:26:44'::timestamp AND b.Date<'2014-04-25 21:19:38'::timestamp;

