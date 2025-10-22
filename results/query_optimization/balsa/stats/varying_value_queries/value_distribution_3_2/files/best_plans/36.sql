/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>138 AND p.Score<174 AND p.CommentCount>4 AND p.CommentCount<13 AND u.DownVotes>53 AND u.DownVotes<1806 AND v.CreationDate>'2010-02-12 08:44:57'::timestamp AND v.CreationDate<'2013-03-09 08:32:17'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2014-03-09 00:26:49'::timestamp AND b.Date<'2014-04-09 21:29:04'::timestamp;

