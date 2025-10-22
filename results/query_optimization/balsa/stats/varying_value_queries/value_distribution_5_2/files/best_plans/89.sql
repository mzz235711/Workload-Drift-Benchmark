/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>50 AND p.Score<127 AND p.CommentCount>9 AND p.CommentCount<23 AND u.DownVotes>764 AND u.DownVotes<1522 AND v.CreationDate>'2009-07-25 11:46:51'::timestamp AND v.CreationDate<'2014-03-22 05:40:17'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2012-02-06 15:53:52'::timestamp AND b.Date<'2012-07-04 06:43:31'::timestamp;

