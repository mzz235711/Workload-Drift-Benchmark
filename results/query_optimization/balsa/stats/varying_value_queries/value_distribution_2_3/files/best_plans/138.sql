/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<191 AND p.CommentCount>4 AND p.CommentCount<19 AND u.DownVotes>174 AND u.DownVotes<1242 AND v.CreationDate>'2009-11-21 00:17:15'::timestamp AND v.CreationDate<'2014-08-24 03:31:45'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2010-12-26 10:18:19'::timestamp AND b.Date<'2012-05-31 03:08:06'::timestamp;

