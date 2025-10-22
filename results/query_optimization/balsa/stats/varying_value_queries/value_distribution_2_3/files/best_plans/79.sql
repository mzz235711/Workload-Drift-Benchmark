/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<136 AND p.CommentCount>1 AND p.CommentCount<24 AND u.DownVotes>322 AND u.DownVotes<779 AND v.CreationDate>'2012-02-04 05:37:21'::timestamp AND v.CreationDate<'2012-08-21 23:54:02'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<14 AND b.Date>'2012-06-10 15:01:09'::timestamp AND b.Date<'2014-01-17 02:09:45'::timestamp;

