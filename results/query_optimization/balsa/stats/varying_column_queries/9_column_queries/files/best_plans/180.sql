/*+ HashJoin(ph p u v)
 HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading(((ph (p u)) v)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.CreationDate>='2010-07-20 07:17:58'::timestamp AND p.CreationDate<='2014-08-28 16:59:26'::timestamp AND u.Views>=0 AND u.Views<=40 AND u.UpVotes>=0 AND u.UpVotes<=93 AND u.CreationDate<='2014-09-12 09:59:29'::timestamp;

