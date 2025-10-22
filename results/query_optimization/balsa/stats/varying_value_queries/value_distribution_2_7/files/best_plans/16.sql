/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>138 AND p.Score<185 AND p.CommentCount>5 AND p.CommentCount<21 AND u.DownVotes>30 AND u.DownVotes<907 AND v.CreationDate>'2010-05-08 09:28:21'::timestamp AND v.CreationDate<'2013-09-22 07:18:20'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2012-02-04 12:58:11'::timestamp AND b.Date<'2012-02-28 19:56:28'::timestamp;

