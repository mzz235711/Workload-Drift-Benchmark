/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>34 AND p.Score<151 AND p.CommentCount>7 AND p.CommentCount<21 AND u.DownVotes>51 AND u.DownVotes<1739 AND v.CreationDate>'2009-05-10 10:35:27'::timestamp AND v.CreationDate<'2012-02-12 11:03:33'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2014-01-04 01:00:42'::timestamp AND b.Date<'2014-02-14 17:54:09'::timestamp;

