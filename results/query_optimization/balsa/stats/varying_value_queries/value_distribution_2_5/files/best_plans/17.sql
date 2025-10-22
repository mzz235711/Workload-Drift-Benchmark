/*+ HashJoin(b v u p)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>40 AND p.Score<42 AND p.CommentCount>3 AND p.CommentCount<19 AND u.DownVotes>85 AND u.DownVotes<1143 AND v.CreationDate>'2012-03-25 00:58:17'::timestamp AND v.CreationDate<'2014-02-28 01:28:42'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2010-12-31 07:59:25'::timestamp AND b.Date<'2013-03-18 12:41:18'::timestamp;

