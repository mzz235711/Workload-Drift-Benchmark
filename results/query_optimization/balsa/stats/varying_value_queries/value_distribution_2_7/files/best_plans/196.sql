/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<134 AND p.CommentCount>30 AND p.CommentCount<42 AND u.DownVotes>205 AND u.DownVotes<827 AND v.CreationDate>'2013-07-14 12:18:11'::timestamp AND v.CreationDate<'2014-08-17 03:42:41'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2011-04-26 10:22:26'::timestamp AND b.Date<'2012-02-10 16:36:06'::timestamp;

