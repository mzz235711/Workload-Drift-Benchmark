/*+ HashJoin(v b p u)
 HashJoin(b p u)
 NestLoop(p u)
 SeqScan(v)
 SeqScan(b)
 SeqScan(p)
 IndexScan(u)
 Leading((v (b (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>127 AND p.Score<186 AND p.CommentCount>7 AND p.CommentCount<16 AND u.DownVotes>486 AND u.DownVotes<1887 AND v.CreationDate>'2011-02-09 02:55:08'::timestamp AND v.CreationDate<'2013-03-27 16:37:15'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2013-03-12 05:52:45'::timestamp AND b.Date<'2014-06-04 01:53:12'::timestamp;

