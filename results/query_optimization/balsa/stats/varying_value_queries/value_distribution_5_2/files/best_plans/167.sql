/*+ HashJoin(v b p u)
 HashJoin(b p u)
 NestLoop(p u)
 SeqScan(v)
 SeqScan(b)
 SeqScan(p)
 IndexScan(u)
 Leading((v (b (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>34 AND p.Score<41 AND p.CommentCount>2 AND p.CommentCount<12 AND u.DownVotes>701 AND u.DownVotes<1435 AND v.CreationDate>'2011-11-17 23:48:48'::timestamp AND v.CreationDate<'2013-11-27 13:11:58'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2011-06-30 23:57:07'::timestamp AND b.Date<'2012-03-29 01:24:03'::timestamp;

